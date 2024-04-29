import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String showExp = '';
  String expression = '';
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(
          20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Text(
                showExp,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              result,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    expression = '';
                                    showExp = '';
                                    result = '';
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "AC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('7');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "7",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('4');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "4",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('1');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('00');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    if (expression.isNotEmpty) {
                                      expression = expression.substring(0, expression.length - 1);
                                      showExp = showExp.substring(0, showExp.length - 1);
                                      if (expression.contains(RegExp(r'[+/*%-]'))) {
                                        clickEvaluation();
                                      }
                                    }
                                  },
                                );
                              }
                            },
                            icon: const Icon(
                              Icons.backspace_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('8');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "8",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('5');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "5",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('2');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('0');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "0",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('/');
                                  },
                                );
                              }
                            },
                            icon: const Icon(
                              CupertinoIcons.divide,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('9');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "9",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('6');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "6",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('3');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('.');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              ".",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('x');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "X",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('-');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "-",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('+');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 165,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    clicked('=');
                                  },
                                );
                              }
                            },
                            child: const Text(
                              "=",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void clicked(String button) {
    if (showExp == "Expression Error") {
      showExp = '';
      expression = '';
      result = '';
    }
    if (button == '=') {
      if (expression.isNotEmpty) {
        evaluateExpression();
      }
    } else {
      if (button == 'x' || button == '+' || button == '/') {
        if (expression.isNotEmpty) {
          if (expression.endsWith('*') || expression.endsWith('+') || expression.endsWith('/') || expression.endsWith('-')) {
            if (button == 'x') {
              expression = '${expression.substring(0, expression.length - 1)}*';
            } else {
              expression = expression.substring(0, expression.length - 1) + button;
            }
            showExp = showExp.substring(0, showExp.length - 1) + button;
          } else {
            if (button == 'x') {
              expression = '$expression*';
            } else {
              expression = expression + button;
            }
            showExp = showExp + button;
          }
        }
      } else {
        expression = expression + button;
        showExp = showExp + button;
      }
      if (expression.contains(RegExp(r'[+/*%-]'))) {
        clickEvaluation();
      }
    }
  }

  void evaluateExpression() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      double value = exp.evaluate(EvaluationType.REAL, cm);
      setState(
        () {
          if (value % 1 == 0) {
            showExp = value.toInt().toString();
          } else {
            showExp = value.toString();
          }
          expression = showExp;
          result = '';
        },
      );
    } catch (e) {
      showExp = "Expression Error";
    }
  }

  void clickEvaluation() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      double value = exp.evaluate(EvaluationType.REAL, cm);
      setState(
        () {
          if (value % 1 == 0) {
            result = value.toInt().toString();
          } else {
            result = value.toString();
          }
        },
      );
    } catch (e) {
      result = "";
    }
  }
}
