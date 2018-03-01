package main

import (
	"net/http"

	"gopkg.in/labstack/echo.v3"
)

func main() {
	e := echo.New()
	e.GET("/", func(ctx echo.Context) error {
		return ctx.String(http.StatusOK, "Hello World!")
	})
	e.Logger.Fatal(e.Start(":3000"))
}
