# #!/bin/bash

# echo 'hello world!'

# if true
# then
#   echo 'True'
# fi

# string='Hello'

# if [[ -n $string ]]
# then
#   echo $string
# fi

# if [[ $integer_1 -eq $integer_2 ]]
# then
#   echo $integer_1 and $integer_2 are the same!
# fi

# if [[ -e ./hello_world.sh ]]
# then
#   echo 'File exists'
# fi

# integer=4

# if [[ $integer -lt 10 ]]
# then
#   echo $integer is less than 10
  
#   if [[ $integer -lt 5 ]]
#   then echo $integer is also less than 5
#   fi
# fi

# integer=15

# if [[ $integer -lt 10 ]]
# then
#   echo $integer is less than 10
# else
#   echo $integer is not less than 10
# fi

# integer=15

# if [[ $integer -lt 10 ]]
# then
#   echo $integer is less than 10
# elif [[ $integr -gt 20 ]]
# then
#   echo $integer is greater than 20
# else
#   echo $integer is between 10 and 20
# fi

integer=1

if ! ([ $integer -eq 5 ]) || ! ([ $integer -eq 6 ])
then
  echo $integer is not 5 or 6
fi