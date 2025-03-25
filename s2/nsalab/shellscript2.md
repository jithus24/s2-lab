Here are the required shell scripts:

---

### **1. Sum of squares of first N numbers (Using `while` loop)**
```sh
#!/bin/bash
echo -n "Enter a number: "
read n
sum=0
i=1
while [ $i -le $n ]
do
    sum=$((sum + (i * i)))
    i=$((i + 1))
done
echo "Sum of squares of first $n numbers: $sum"
```

---

### **2. Menu-driven program for arithmetic operations**
```sh
#!/bin/bash
while true
do
    echo "MENU:"
    echo "1. Sum"
    echo "2. Difference"
    echo "3. Product"
    echo "4. Quotient"
    echo "5. Exit"
    echo -n "Enter your choice: "
    read choice

    if [ $choice -eq 5 ]; then
        echo "Exiting..."
        exit
    fi

    echo -n "Enter first number: "
    read num1
    echo -n "Enter second number: "
    read num2

    case $choice in
        1) echo "Sum: $((num1 + num2))" ;;
        2) echo "Difference: $((num1 - num2))" ;;
        3) echo "Product: $((num1 * num2))" ;;
        4) 
            if [ $num2 -eq 0 ]; then
                echo "Division by zero is not allowed!"
            else
                echo "Quotient: $((num1 / num2))"
            fi
            ;;
        *) echo "Invalid choice!" ;;
    esac
done
```

---

### **3. Menu-driven program to find the month from a number (infinite loop)**
```sh
#!/bin/bash
while true
do
    echo "Enter a number (1-12) to get the corresponding month, or 0 to exit:"
    read num

    if [ $num -eq 0 ]; then
        echo "Exiting..."
        exit
    fi

    case $num in
        1) echo "January" ;;
        2) echo "February" ;;
        3) echo "March" ;;
        4) echo "April" ;;
        5) echo "May" ;;
        6) echo "June" ;;
        7) echo "July" ;;
        8) echo "August" ;;
        9) echo "September" ;;
        10) echo "October" ;;
        11) echo "November" ;;
        12) echo "December" ;;
        *) echo "Invalid number! Enter a value between 1 and 12." ;;
    esac
done
```

---

### **4. Factorial of a number (Using function)**
```sh
#!/bin/bash
factorial() {
    num=$1
    fact=1
    while [ $num -gt 1 ]
    do
        fact=$((fact * num))
        num=$((num - 1))
    done
    echo "Factorial: $fact"
}

echo -n "Enter a number: "
read n
factorial $n
```

---

### **5. Fibonacci sequence up to N**
```sh
#!/bin/bash
echo -n "Enter N: "
read n
a=0
b=1

echo "Fibonacci series up to $n:"
echo -n "$a $b "

while [ $((a + b)) -le $n ]
do
    fib=$((a + b))
    echo -n "$fib "
    a=$b
    b=$fib
done

echo
```

---

### **6. Convert Decimal to Binary (Using `while` loop)**
```sh
#!/bin/bash
echo -n "Enter a decimal number: "
read num

binary=""

while [ $num -gt 0 ]
do
    remainder=$((num % 2))
    binary="$remainder$binary"
    num=$((num / 2))
done

echo "Binary: $binary"
```

---

These scripts will help you practice basic shell scripting concepts like loops, functions, and case statements. Let me know if you need any modifications!