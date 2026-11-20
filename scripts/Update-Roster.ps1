param(
    [Parameter(Mandatory = $true)]
    [string]$Workbook
)

$ErrorActionPreference = 'Stop'


# =========================================
# TIME CONVERSION FUNCTION
# =========================================

function Minutes([string]$value) {

    if ($value -notmatch '^(1[0-2]|[1-9])(?::([0-5][0-9]))?$') {
        throw "Invalid time: $value"
    }

    $hour = [int]$Matches[1]

    if ($hour -lt 8) {
        $hour += 12
    }

    return $hour * 60 + [int]$Matches[2]
}


# =========================================
# OPEN EXCEL WORKBOOK
# =========================================

$path = (Resolve-Path $Workbook).Path

$app = New-Object -ComObject Excel.Application

try {

    $app.DisplayAlerts = $false
    $app.AutomationSecurity = 3

    $book = $app.Workbooks.Open($path, 0, $true)

    $app.Calculate()

    $cells = $book.Worksheets.Item('Schedule_Clean').UsedRange.Value2


    # =========================================
    # INITIALIZE WEEKLY SCHEDULE
    # =========================================

    $week = @{}


    # =========================================
    # PROCESS WEEKDAYS
    # =========================================

    foreach ($col in 2..6) {

        $day = [string]$cells[1, $col]

        $week[$day] = @()


        # -------------------------------------
        # PROCESS EMPLOYEE ROWS
        # -------------------------------------

        for ($row = 2; $row -le $cells.GetLength(0); $row++) {

            $name = ([string]$cells[$row, 1]).Trim() `
                -replace '\s+2nd Shift$', ''

            $shift = ([string]$cells[$row, $col]).Trim()


            # Skip empty shifts, OFF days, and zero values.
            if (!$name -or $shift -in @('', 'OFF', '0')) {
                continue
            }


            # ---------------------------------
            # PARSE SHIFT TIMES
            # ---------------------------------

            $parts = $shift -split '\s*[-–]\s*'

            if ($parts.Count -ne 2) {
                throw "Invalid shift for $name on $day"
            }

            $start = Minutes $parts[0]
            $end = Minutes $parts[1]


            # Validate shift duration.
            if ($end -le $start) {
                throw "Check times for $name on $day"
            }


            # Add employee shift to weekly schedule.
            $week[$day] += ,@($name, $start, $end)
        }
    }


    # =========================================
    # GENERATE JAVASCRIPT OUTPUT
    # =========================================

    $out = Join-Path $PSScriptRoot 'roster.js'

    $js = 'var week = ' +
        (ConvertTo-Json -InputObject $week -Depth 5 -Compress) +
        ';'


    # =========================================
    # WRITE OUTPUT FILE
    # =========================================

    [IO.File]::WriteAllText("$out.tmp", $js)

    Move-Item -Force "$out.tmp" $out

}
finally {

    # =========================================
    # CLEANUP
    # =========================================

    if ($book) {
        $book.Close($false)
    }

    $app.Quit()
}
