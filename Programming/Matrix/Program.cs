class Matrix {
	public int[,] Matr { get; private set; }
	public Matrix(int[,] matrix) {
		Matr = matrix;
	}

	public Matrix(int n, int m) {
		Matr = new int[n, m];
	}

	public static Matrix operator *(Matrix A, Matrix B) {
		if(A.Matr.GetLength(0) != B.Matr.GetLength(1)) throw new Exception("Error");

		Matrix C = new(A.Matr.GetLength(0), B.Matr.GetLength(1));

		for(int i = 0; i < A.Matr.GetLength(0); i++)
			for(int j = 0; j < B.Matr.GetLength(1); j++) {
				C.Matr[i, j] = 0;
				for(int k = 0; k < A.Matr.GetLength(1); k++)
					C.Matr[i, j] += A.Matr[i, k] * B.Matr[k, j];
			}
		return C;
	}

	public static Matrix operator +(Matrix A, Matrix B) {
		if((A.Matr.GetLength(0) != B.Matr.GetLength(0)) || (A.Matr.GetLength(1) != B.Matr.GetLength(1))) throw new Exception("Error");

		Matrix C = new(A.Matr.GetLength(0), A.Matr.GetLength(1));

		for(int i = 0; i < A.Matr.GetLength(0); i++)
			for(int j = 0; j < A.Matr.GetLength(1); j++)
				C.Matr[i, j] += A.Matr[i, j] + B.Matr[i, j];

		return C;
	}

	public override string ToString() {
		string str = "";
		for(int i = 0; i < Matr.GetLength(0); i++) {
			for(int j = 0; j < Matr.GetLength(1); j++)
				str += Matr[i, j] + " ";
			str += "\n";
		}
		return str;
	}
}

static class Program {
	static void Main() {
		Matrix A = new(new int[,]{{1,2},{1,3}});
		Matrix B = new(new int[,]{{2,4},{2,5}});
		try {
			Console.WriteLine(A * B);
			Console.WriteLine(A + B);
		} catch(Exception e) {
			Console.WriteLine(e.Message);
		}

	}
}