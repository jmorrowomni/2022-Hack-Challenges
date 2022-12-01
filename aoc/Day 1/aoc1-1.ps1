$stream_reader = New-Object System.IO.StreamReader{.\day1input.txt}
$line_number = 1
$calories = 0
$total = 0
while (($current_line =$stream_reader.ReadLine()) -ne $null)
{    
    
    if ($current_line -ne "") 
    {
      $total = $total + [int]$current_line
      $line_number++  
      
    }  
    else {
        Write-Host $total
        if ($total -gt $calories)
        {
            $calories = $total
        }
        $total = 0
        $line_number++
    }
    
}

Write-Host "The most calories are $calories"