'
:
2) a) A company requires a program to enter employee name, hours worked and rate per hour of an employee then calculate basic pay. Tax is calculated on basic pay as follows:
Basic pay
Tax
Over 70000
25% of basic pay
Between 15000 and
15% of basic pay
70000
No tax
Below 15000
Write a shell script that will enable the user to implement the following. Prompt the user to enter employee name, hours worked
and rate per hour
i.
ii.
Calculate the basic pay (basic pay = hours worked * rate
per hour)
Use an if-else statement to calculate tax based on basic
pay to meet the stipulated requirements shown in the table above
iv.
Calculate the net pay (net pay = basic pay - tax)

"solution"
'

read -p "Enter employee name: "employee_name read -p "Enter hours worked: " hours_worked
read -p "Enter rate per hour: "rate_per_hour
basic_pay=$(echo "scale=2; $hours_worked *$rate_per_hour" | bc)
if (($(echo "$basic_pay > 70000" | bc-1)); then
tax=$(echo "scale=2; 0.25 * static_pay" (bc)
elif (($(echo "static_pay >= 15000 && $basic_pay <= 70000" | bc -1))); then tax=$(echo "scale=2; 0.15 * $basic_pay"bc)
else
tax=0
fi
net_pay=$(echo "scale=2; &basic_pay - 4tax" | bc)
echo "Employee name: $employee_name"
echo "Hours worked: $hours_worked"
echo "Rate per hour: $rate_per_hour"
echo "Basic pay: $basic_pay"
echo "Tax: $tax"
echo "Net pay: $net pay"
