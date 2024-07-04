ordenar_digitos_burbuja <- function(numero) {
  # Convertir el número a caracteres y luego a un vector de caracteres
  digitos <- as.character(numero)

  # Longitud del vector de dígitos
  n <- nchar(numero)

  # Aplicar el algoritmo de la burbuja
  for (i in 1:(n - 1)) {
    for (j in 1:(n - i)) {
      # Convertir caracteres a números para comparar
      if (as.numeric(digitos[j]) > as.numeric(digitos[j + 1])) {
        # Intercambiar dígitos si el actual es mayor que el siguiente
        temp <- digitos[j]
        digitos[j] <- digitos[j + 1]
        digitos[j + 1] <- temp
      }
    }
  }
  # Convertir el vector de caracteres ordenado de nuevo a número
  numero_ordenado <- as.numeric(paste(digitos, collapse = ""))

  return(numero_ordenado)
}
