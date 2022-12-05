$stream_reader = New-Object System.IO.StreamReader{aoc\Day 4\day4input.txt}
$total = 0

while (($current_line =$stream_reader.ReadLine()) -ne $null)

{    
   
    $cleaned1 = $current_line.Substring(0, $current_line.IndexOf(',')).Split("-")
    $cleaned2 = $current_line.Substring(($current_line.IndexOf(',') + 1)).Split("-")

    #if (([int]$cleaned1[0] -le [int]$cleaned2[0] -and [int]$cleaned1[1] -ge [int]$cleaned2[1]) -or ([int]$cleaned2[0] -le [int]$cleaned1[0] -and [int]$cleaned2[1] -ge [int]$cleaned1[1])) 
    if (([int]$cleaned1[0] -gt [int]$cleaned2[1]) -or ([int]$cleaned1[1] -lt [int]$cleaned2[0])) {
    }
    else {
        Write-Host "$cleaned1,$cleaned2"
        $total++
    }
  
}

Write-Output "$total pairs overlap"


