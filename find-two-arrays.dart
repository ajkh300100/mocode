class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    // 각각의 리스트에서 중복을 제거한 Set으로 변환
    final set1 = nums1.toSet();
    final set2 = nums2.toSet();
    // nums1에는 있고 nums2에는 없는 요소 찾기
    final onlyInNums1 = set1.difference(set2).toList();
    // nums2에는 있고 nums1에는 없는 요소 찾기
    final onlyInNums2 = set2.difference(set1).toList();
    // 결과를 반환
    return [onlyInNums1, onlyInNums2];
  }
}
