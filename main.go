package main

import (
	"fmt"

	"github.com/fatih/color"
	"github.com/google/uuid"
)

func main() {
	id := uuid.New()
	color.Cyan("Hello from Go! Your UUID is: %s", id.String())
	fmt.Println("Done.")
}