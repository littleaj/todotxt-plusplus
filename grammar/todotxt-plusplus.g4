// todotxt-plusplus lexer
lexer grammar TodoTxtPlusPlus;

PROJECT_PREFIX: '+';
CONTEXT_PREFIX: '@';
COMPLETED_CHAR: 'x';
PRIORITY_LEFT_BRACKET: '(';
PRIORITY_RIGHT_BRACKET: ')';
PRIORITY_RANK: [A-Z];
SP: ' ';
DATE_DELIMITER: '-';
DIGIT: [0-9];
PROPERTY_DELIMITER: ':';
CR: '\r';
LF: '\n';
NEWLINE: LF | CR LF;

