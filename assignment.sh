'
:
1  a) You are tasked with creating a shell script to calculate and display the electricity bill for a given customer based on the units consumed. The program should consider different charging rates and apply surcharges as specified. Implement the program using the provided criteria. The charges are as follow: Units Charges per unit (Ksh)
upto 199
120
200 and above but less than 400 150
400 and above but less than 600 180
600 and above
200
Write a shell script to implement the following
i.
Prompt the user to enter CustomerID, CustomerName and
UnitConsumed
ii.
Use an if..else statement to check the above given conditions and apply the necessary calculations
iii.
Calculate the total bill

"solution"
'
read -p "Enter CustomerID:" customer_id 
read -p "Enter CustomerName:" customer_name
read -p "Enter UnitConsumed:" unit_consumed
rate_1=120
rate_2=150
rate_3=180
rate_4=200
if [ $units_consumed < 200 ]; then
	total_bill=$(($units_consumed*$rate_1))
elif [ $units_consumed >= 200 ] && [ $units_consumed < 400 ]; then 
	total_bill=$((199*$rate_1 + ($units_consumed - 199) *$rate2))
elif [ $units_consumed >= 400 ] && [ $units_consumed < 600 ]; then
	total_bill=$((199* $rate_1 + 200* $rate_2 +($units_consumed - 399) *$rate_3))
else
	total_bill=$((199*$rate_1+200 * $rate_2 + 200 *$rate_3+ ($units_consumed -599) * $rate_4))
fi
echo "CustomerID: $customer_id"
echo "CustomerName: Scustomer_name"
echo "UnitConsumed: $unit_consumed"
echo "Total Bill: Ksh Stotal_bill"
