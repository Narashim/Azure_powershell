$x=10
$y=20

$x
$y

'the value of x is ' + $x

$x.GetType()

$courseName="azure PowerShell"

$courseName.GetType()

$coursevideos= 't1','t2','t3'
$coursevideos

$coursevideos_2= @(
    't1'
    't2'
    't3'
)
$coursevideos_2

$coursevideos_2[0]


for ($i=1; $i -le 20; ++$i)
{
    $i
}

$coursevideos= 't1','t2','t3'
foreach($course in $coursevideos)
{
    $course
} 