<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 모달 -->
    <div id="carModal" class="modal-overlay">
        <div class="modal-container">
            <div class="modal-header">
                <h2 class="modal-title">새 차량 데이터 추가</h2>
                <button class="modal-close" onclick="closeModal()">&times;</button>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label class="form-label">
                        자동차 브랜드 (CAR) <span class="required">*</span>
                    </label>
                    <input type="text" id="carBrand" class="form-input" 
                           placeholder="예: Toyota, BMW, Hyundai" maxlength="50">
                    <div class="error-message" id="carBrandError">자동차 브랜드를 입력해주세요.</div>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        모델명 (MODEL) <span class="required">*</span>
                    </label>
                    <input type="text" id="carModel" class="form-input" 
                           placeholder="예: Aygo, Cooper, Sonata" maxlength="50">
                    <div class="error-message" id="carModelError">모델명을 입력해주세요.</div>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        배기량 (VOLUME) <span class="required">*</span>
                    </label>
                    <input type="number" id="carVolume" class="form-input" 
                           placeholder="예: 1000, 1200, 1500" min="1" max="10000">
                    <div class="error-message" id="carVolumeError">배기량을 입력해주세요.</div>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        무게 (WEIGHT) <span class="required">*</span>
                    </label>
                    <input type="number" id="carWeight" class="form-input" 
                           placeholder="예: 790, 1160, 1500" min="1" max="50000">
                    <div class="error-message" id="carWeightError">무게를 입력해주세요.</div>
                </div>

                <div class="form-group">
                    <label class="form-label">
                        CO2 배출량 <span class="required">*</span>
                    </label>
                    <input type="number" id="carCo2" class="form-input" 
                           placeholder="예: 95, 99, 105" min="1" max="1000">
                    <div class="error-message" id="carCo2Error">CO2 배출량을 입력해주세요.</div>
                </div>

                <div class="button-group">
                    <button type="button" class="btn btn-cancel" onclick="closeModal()">취소</button>
                    <button type="button" class="btn btn-submit" id="submitBtn" onclick="submitForm()">추가</button>
                </div>
            </div>
        </div>
    </div>