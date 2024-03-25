package HashMap
{

	/**
	 * @author jwLee
	 */
	public class HashMap
	{
		private var hashTable : Array;

		public function HashMap (hm : HashMap = null) : void
		{
			if (hm == null) 
			{
				hashTable = new Array();
			} 
			else 
			{
				hashTable = hm.getHashTable();
			}
		}


		
		public function put (key : *, value : *) : *
		{
			var len : int = length;
			for(var i : int = 0;i < len;i++)
			{
				if(hashTable[i].key == key)
				{
					hashTable[i].key = key;
					hashTable[i].value = value;
					return value;
				}
			}
			hashTable.push({key:key, value:value});
			return value;
		}

		
		public function remove (key : *) : Boolean
		{
			var len : int = length;
			for(var i : int = 0;i < len;i++)
			{
				if(hashTable[i].key == key)
				{
					hashTable.splice(i, 1);
					return true;
				}
			}
			return false;
		}

		
		public function getValue (key : *) : *
		{
			var len : int = length;
			for(var i : int = 0;i < len;i++)
			{
				if(hashTable[i].key == key)
				{
					return hashTable[i].value;
				}
			}
			return null;
		}

		
		public function getHashTable () : Array
		{
			return hashTable;
		}

		
		public function setHashTable (hashTable : Array) : void
		{
			this.hashTable = hashTable;
		}

		
		public function get length () : int
		{
			return hashTable.length;
		}
	}
}