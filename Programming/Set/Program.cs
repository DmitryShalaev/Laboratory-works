namespace MySet {
    class Set {
        private readonly MyList.List list;

        public Set(string set) {
            if(set[0] == '{' && set[^1] == '}') {
                set = set.TrimStart('{').TrimEnd('}') ;
                bool flag=false;
                foreach(char item in set) {
                    if(char.IsDigit(item)) {
                        flag = false;
                        if(list == null) {
                            list = new(int.Parse(item.ToString()));
                        } else {
                            list.Add(int.Parse(item.ToString()));
                        }
                    } else if(item ==',') {
                        if(flag) {
                            throw new Exception("Ошибка формирования множества");
                        }
                        flag = true;
                        continue;
                    } else {
                        throw new Exception("Ошибка формирования множества");
                    }
                }
            }
            if(list == null) {
                throw new Exception("Ошибка формирования множества");
            }
        }

        public void Add(int i) {
            if(list.Contains(i)) {
                throw new Exception($"Элемент {i} уже содержится во множестве");
            }
            list.Add(i);
        }

        public override string ToString() {
            string str="{";
            for(int i = 0; i < list.Count; i++) {
                str += $"{list[i]},";
            }

            return str.TrimEnd(',') + "}";
        }
    }

}

namespace Program {
    class Program {
        static void Main() {
            try {
                MySet.Set set=new("{1,2,3,4}");
                set.Add(3);
                Console.WriteLine(set);
                set.Add(3);
            } catch(Exception e) {
                Console.WriteLine(e.Message);
                return;
            }
            
        }
    }

}