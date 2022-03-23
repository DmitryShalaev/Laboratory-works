namespace program {
	internal class HashSet {
		private List<HashElemet> list;
		public int hash { get; private set; }

		public HashSet() => list = new();

		public void Add(HashElemet elem) {
			if(Contains(elem)) {
				throw new Exception($"Элемент {elem} уже содержится во множестве");
			} else {
				list.Add(elem);
				hash = GetHashCode();
			}
		}

		public override bool Equals(object? obj) {
			if(obj == this) return true;

			HashSet? elemet = (obj as HashSet);
			if(elemet?.hash == hash) {
				if(list.Count != elemet.list.Count) return false;
				
				for(int i = 0; i < list.Count; i++) {
					bool flag = false;
					for(int j = 0; j < list.Count; j++) {
						if(list[i].Equals(elemet.list[j])) {
							flag = true;
							break;
						}
					}
					if(!flag)
						return false;
				}
				return true;
			} else {
				return false;
			}
		}

		public override int GetHashCode() {
			int _hash = 0;
			foreach(var item in list) {
				_hash += item.GetHashCode();
			}
			return list.Count + _hash;
		}

		public bool Contains(HashElemet elem) {
			foreach(var item in list) {
				if(item.Equals(elem)) {
					return true;
				}
			}
			return false;
		}

		public override string ToString() {
			string str = "";
			foreach(var item in list) {
				str += item.ToString()+"\n";
			}
			return str;
		}

	}
}
