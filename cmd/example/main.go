// Package main 提供了一个简单的示例应用程序。
package main

import "fmt"

// main 是应用程序的入口点。
func main() {
	fmt.Println(greet("World"))
}

// greet 返回问候消息。
func greet(name string) string {
	return fmt.Sprintf("Hello, %s!", name)
}
