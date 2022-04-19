static class MSD {
	public static int Min(int[] arr, int i, int sumCalculated, int sumTotal) {
		if(i == 0) return Math.Abs((sumTotal - sumCalculated) - sumCalculated);

		return Math.Min(Min(arr, i - 1, sumCalculated + arr[i - 1], sumTotal),
						Min(arr, i - 1, sumCalculated, sumTotal));
	}

	public static int Min(int[] Arr) {
		int sumTotal = 0;
		for(int i = 0; i < Arr.Length; i++)
			sumTotal += Arr[i];

		return Min(Arr, Arr.Length, 0, sumTotal);
	}

	static void Main() {
		int[] arr = {1,3,3,3};

		Console.Write(Min(arr));
	}
}