namespace program {
	internal class HashElemet {
		public HashElemet(string str, int i) {
			this.str = str;
			this.i = i;
			hash = GetHashCode();
		}

		public string str { get; set; }
		public int i { get; set; }
		public int hash { get; private set; }

		public override int GetHashCode() {
			return str.Length + i % 3;
		}

		public override bool Equals(object? obj) {
			if (obj == this) return true;

			HashElemet? elemet = (obj as HashElemet);
			if(elemet?.hash == hash) {
				for(int i = 0; i < str.Length; i++) {
					if(str[i] != elemet.str[i]) {
						return false;
					}
				}
				if(i != elemet.i) {
					return false;
				}
				return true;
			} else {
				return false;
			}
		}

		public override string ToString() {
			return $"str: {str}; i: {i}";
		}
	}
}
