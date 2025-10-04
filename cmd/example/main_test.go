package main

import "testing"

func TestGreet(t *testing.T) {
	tests := []struct {
		name string
		arg  string
		want string
	}{
		{
			name: "greet world",
			arg:  "World",
			want: "Hello, World!",
		},
		{
			name: "greet gopher",
			arg:  "Gopher",
			want: "Hello, Gopher!",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := greet(tt.arg); got != tt.want {
				t.Errorf("greet() = %v, want %v", got, tt.want)
			}
		})
	}
}
