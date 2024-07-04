# Función para calcular el factorial de un número
factorial <- function(n) {
  return(ifelse(n == 0, 1, n * factorial(n - 1)))
}

# Función para calcular el número recursivo de un número
recursivo <- function(n) {
  return(ifelse(n == 0, 1, ifelse(n == 1, 0, (n - 1) * (recursivo(n - 1) + recursivo(n - 2)))))
}

# Función para verificar y mostrar si un número es recursivo
es_recursivo <- function(numero) {
  resultado_factorial <- factorial(numero)
  resultado_recursivo <- recursivo(numero)

  mensaje <- ifelse(resultado_recursivo == resultado_factorial, paste(numero, "es un número recursivo."), paste(numero, "NO es un número recursivo."))

  cat(mensaje, "\n")
}


