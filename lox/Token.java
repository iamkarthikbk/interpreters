package com.karpreters.lox;

class Token {
  final TokenType type;
  final String lexeme;
  final Object literal;
  final int line;

  Token(TokenType type, String lexeme, Object literal, int line) {
    this.type = type;
    this.lexeme = lexeme;
    this.literal = literal;
    this.line = line;
  }

  // this is used for error reporting. a line number and column number will be more useful.
  public String toString() {
    return type + " " + lexeme + " " + literal;
  }
}