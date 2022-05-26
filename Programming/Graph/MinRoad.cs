namespace Graph;
internal partial class Graph {

	/// <summary>
	/// Рекурсивный поиск минимального пути между двумя точками
	/// </summary>
	/// <param name="Start">Начальный узел</param>
	/// <param name="End">Конечный узел</param>
	/// <returns>Стоймость пути</returns>
	public int MinRoad(int Start, int End) {
		bool[] in_use = new bool[_vertexCount];

		int MR(int _Start) {
			if(_Start == End) return 0;

			int Price = int.MaxValue;
			in_use[_Start] = true;

			for(int i = 0; i < _vertexCount; i++) {
				if(in_use[i] == false && _G[_Start, i] > 0) {
					int tmp = MR(i);
					if(tmp != int.MaxValue)
						Price = Math.Min(Price, tmp + _G[_Start, i]);

					in_use[i] = false;
				}
			}
			return Price;
		}

		return MR(Start);
	}
}
