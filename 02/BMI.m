function BMI = BMI(height, weight)
    height = height/100;
    BMI = weight / (height^2);