class Solution {
	public static void main(String[] args) {
		BinarySolution bs = new BinarySolution();
		bs.main(new int[]{5, 7, 7, 8, 9, 10}, 9);
	}
	
}

class BinarySolution {
	public static void main(int[] array, int target) {	
		System.out.println("--> " + target);
		int low = 0;
		int high = array.length - 1;
		
		while(low <= high) {
			int mid = low + (high - low) / 2;
			System.out.println("Mid is now"+ mid);
			low++;
			if (array[mid] == target) {
				System.out.println(mid);
			} else if (array[mid] < target) {
				high = mid - 1;
			} else if (array[mid] > target) {
				low = mid + 1;
				
			}
		}
		
		System.out.println("not found?");

	}
}