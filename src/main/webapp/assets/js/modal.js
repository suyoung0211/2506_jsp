// 전역 변수
//     let carData = [];

// 폼 submit
function submitForm(){
	// 유효성 검사 통과 확인
	if(!validateForm()){
		return;     // 유효검사 결과 '거짓'이면 submit 종료
	}
	// form 태그 만들기
	const form = document.createElement('form')
	form.method='POST'  // 저장은 반드시 POST
	form.action = 'CarSave'
	// name 속성 배열
	const carData = ['carBrand','carModel','carVolume','carWeight','carCo2']
	// 모달의 모든 input 가져오기
	document.querySelectorAll('.modal-body input').forEach((input,index) => {
		input.name = carData[index]    // name 속성 값 
		form.appendChild(input)			// form 태그의 자식으로 추가하기
	})
	
	document.body.appendChild(form)
	form.submit();      // form 요소의 submit() 실행
	closeModal()
	document.body.removeChild(form)   // form 변수로 지정된 요소를 제거
}



 // 모달 열기
 function openModal() {
     clearForm();
     document.getElementById('carModal').classList.add('show');
 }

 // 모달 닫기
 function closeModal() {
     clearForm();
     document.getElementById('carModal').classList.remove('show');
	 clearErrors()
 
}
 
 // 폼 초기화
 function clearForm() {
     document.getElementById('carBrand').value = '';
     document.getElementById('carModel').value = '';
     document.getElementById('carVolume').value = '';
     document.getElementById('carWeight').value = '';
     document.getElementById('carCo2').value = '';
     
 }
 
 // 에러 상태 스타일(css) 초기화
 function clearErrors() {
     const inputs = document.querySelectorAll('.form-input');
     const errors = document.querySelectorAll('.error-message');
     
     inputs.forEach(input => input.classList.remove('error'));
     errors.forEach(error => error.style.display = 'none');
 }
 
 // 유효성 검사 
 function validateForm() {
      let isValid = true;
      clearErrors();

      const carBrand = document.getElementById('carBrand').value.trim();
      const carModel = document.getElementById('carModel').value.trim();
      const carVolume = document.getElementById('carVolume').value;
      const carWeight = document.getElementById('carWeight').value;
      const carCo2 = document.getElementById('carCo2').value;

	  // 유효성 검사 내용
      // 자동차 브랜드 검사 : 빈 문자열 ❌❌
      if (!carBrand) {   // 값이 없으면 참
          showError('carBrand', 'carBrandError');
          isValid = false;
      }

      // 모델명 검사 : 빈 문자열 ❌
      if (!carModel) {
          showError('carModel', 'carModelError');
          isValid = false;
      }

      // 배기량 검사 : : 빈 문자열 ❌ 또는 값이 0보다 작아도 ❌ 
      if (!carVolume || carVolume <= 0) {
          showError('carVolume', 'carVolumeError');
          isValid = false;
      }

      // 무게 검사 : 빈 문자열 ❌ 또는 값이 0보다 작아도 ❌
      if (!carWeight || carWeight <= 0) {
          showError('carWeight', 'carWeightError');
          isValid = false;
      }

      // CO2 배출량 검사 : 빈 문자열 ❌ 또는 값이 0보다 작아도 ❌
      if (!carCo2 || carCo2 <= 0) {
          showError('carCo2', 'carCo2Error');
          isValid = false;
      }

      return isValid;
  }

  // 에러 표시
  function showError(inputId, errorId) {
      document.getElementById(inputId).classList.add('error');
      document.getElementById(errorId).style.display = 'block';
  }