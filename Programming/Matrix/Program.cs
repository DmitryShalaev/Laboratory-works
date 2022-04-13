class Matrix {
	public double[,] Matr { get; private set; }
	public Matrix(double[,] matrix) {
		Matr = matrix;
	}

	public Matrix(int n, int m) {
		Matr = new double[n, m];
	}

	public static Matrix operator *(Matrix A, Matrix B) {
		if(A.Matr.GetLength(0) != B.Matr.GetLength(1)) throw new Exception("Error");

		Matrix C = new(A.Matr.GetLength(0), B.Matr.GetLength(1));

		for(int i = 0; i < A.Matr.GetLength(0); i++)
			for(int j = 0; j < B.Matr.GetLength(1); j++) {
				C.Matr[i, j] = 0;
				for(int k = 0; k < A.Matr.GetLength(1); k++)
					C.Matr[i, j] += Math.Round(A.Matr[i, k] * B.Matr[k, j]);
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

	public Matrix Minor(int Row, int Column) {
		if(Matr.GetLength(0) != Matr.GetLength(1)) throw new Exception("Error");

		Matrix _A = new(Matr.GetLength(0)-1,Matr.GetLength(1)-1);

		for(int i = 0; i < Matr.GetLength(0); i++) {
			for(int j = 0; j < Matr.GetLength(1); j++) {
				if(i == Row || j == Column) continue;
				_A.Matr[i > Row ? i - 1 : i, j > Column ? j - 1 : j] = Matr[i, j];
			}
		}
		return _A;
	}

	public Matrix Inverse() {
		if(Matr.GetLength(0) != Matr.GetLength(1)) throw new Exception("Error");

		double _Determinant = Determinant();

		if(_Determinant == 0) throw new Exception("Error");

		Matrix _A  = new (Matr.GetLength(0), Matr.GetLength(1));

		for(int i = 0; i < Matr.GetLength(0); i++) {
			for(int j = 0; j < Matr.GetLength(0); j++) {
				_A.Matr[j, i] = Math.Pow(-1, i + j) * Minor(i, j).Determinant() / _Determinant;
			}
		}

		return _A;
	}

	public double Determinant() {
		if(Matr.GetLength(0) != Matr.GetLength(1)) throw new Exception("Error");

		if(Matr.GetLength(0) == 1) return Matr[0, 0];

		double result = 0;

		for(int i = 0; i < Matr.GetLength(0); i++)
			result += (i % 2 == 1 ? 1 : -1) * Matr[1, i] * Minor(1, i).Determinant();

		return result;
	}
}

static class Program {
	static void Main() {
		Matrix B = new(new double[,]{{1,2},{3,4}});
		try {
			Console.WriteLine(B);
			Console.WriteLine();
			Console.WriteLine(B.Inverse());
			Console.WriteLine();
			Console.WriteLine(B*B.Inverse());
		} catch(Exception e) {
			Console.WriteLine(e.Message);
		}

	}
}