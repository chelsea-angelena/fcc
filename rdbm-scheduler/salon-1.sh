#! /bin/bash
#Set the value of variable
database="salon"

user="freecodecamp"

echo -e "Welcome, please select a service:\n1) eyebrow\n2) wax\n3) makeup" 

read SERVICE_ID_SELECTED

service=$(psql -d $database -t -U $user -c "SELECT * FROM services WHERE service_id=$SERVICE_ID_SELECTED");

if [[ -n $service ]]
then 

  echo "What is your phone number?"
  read CUSTOMER_PHONE
  echo $CUSTOMER_PHONE

  hasCustomer=$(psql -d $database -t -U $user -c "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if ! [ $hasCustomer ]
  then

    echo "What is your name?" 
    read CUSTOMER_NAME
    echo "$CUSTOMER_NAME"
    echo $(psql -d $database -t -U $user -c "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')");


    fi
      echo  "What time do you want to book?: " 
      read SERVICE_TIME
      echo $SERVICE_TIME

      CUSTOMER_ID=$(psql -d $database -t -U $user -c "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

      CUSTOMER_NAME=$(psql -d $database -t -U $user -c "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
      
      echo $(psql -d $database -t -U $user -c "INSERT INTO appointments(service_id, time, customer_id) VALUES($SERVICE_ID_SELECTED, '$SERVICE_TIME', $CUSTOMER_ID)");    

      SERVICE_NAME=$(psql -d $database -t -U $user -c "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED");

      echo "I have put you down for a${SERVICE_NAME} at $SERVICE_TIME,$CUSTOMER_NAME."

else
  echo -e "1) eyebrow\n2) wax\n3) makeup" 
fi


