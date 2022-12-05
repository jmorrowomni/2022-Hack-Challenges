$stream_reader = New-Object System.IO.StreamReader{aoc\Day 1\day1input.txt}
$line_number = 1
$calories = 0
$total = 0
$elf1,$elf2,$elf3 = 0
while (($current_line =$stream_reader.ReadLine()) -ne $null)
{    
    
    if ($current_line -ne "") 
    {
      $total = $total + [int]$current_line
      $line_number++  
      
    }  
    else {
        Write-Host $total
        if ($total -gt $elf1)
        {
            $elf3 = $elf2
            $elf2 = $elf1
            $elf1 = $total
        }
        elseif ($total -gt $elf2) 
        {
            $elf3 = $elf2
            $elf2 = $total
        }
        elseif ($total -gt $elf3)
        {
            $elf3 = $total
        }
        $total = 0
        $line_number++
    }
    $calories = $elf1 + $elf2 + $elf3
}

Write-Host "Elf1 was carrying $elf1 calories"
Write-Host "Elf2 was carrying $elf2 calories"
Write-Host "Elf3 was carrying $elf3 calories"
Write-Host "They were carrying $calories calories all together!"