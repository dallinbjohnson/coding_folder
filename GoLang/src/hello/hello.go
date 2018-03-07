package main

import "fmt"

func main() {
	fmt.Println("Hello, World!")

	var age int = 24

	var favNum float64 = 1.6180339

	randNum := 1

	fmt.Println(age, favNum, randNum)

	for i := 1; i <= 10; i++ {
		fmt.Println(i)
	}

	if age == 24 {
		fmt.Println("It's your Birthday!!")
	} else if age > 30 {
		fmt.Println("Your Old!!")
	} else {
		fmt.Println("It's not your Birthday")
	}

	switch age {
		case 16 : fmt.Println("You can Drive!")
		case 21 : fmt.Println("You can Drink but not really")
		case 24 : fmt.Println("It's your Birthday")
		default : fmt.Println("What's Up?")
	}

	arr := [5]int {1,2,3,4,5}

	for _, value := range arr {
		fmt.Println(value)
	}
	fmt.Printf("%#v\n", arr)

	arr2 := []int {1,2,3,4,5,6}
	fmt.Println(arr2)

	arr3 := []interface{} {"A", "1", 1, true}
	fmt.Println(arr3)
	fmt.Printf("%#v\n", arr3)

}
