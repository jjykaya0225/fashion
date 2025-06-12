# Fashion Customer Behavior Analysis Project

## 프로젝트 개요
이 프로젝트는 패션 소비자 행동 데이터를 활용하여 탐색적 데이터 분석(EDA), 고객 군집화, 그리고 은닉 마르코프 모델(HMM)을 통한 행동 패턴 분석을 진행했습니다.  
BigQuery를 사용해 데이터를 처리하고, Python과 Jupyter 노트북을 통해 분석 및 시각화를 수행합니다.

## 프로젝트 구조
.
├── configs/
│   └── config.yaml          # 설정 파일 (예: BigQuery 프로젝트, 데이터셋 정보)
├── notebooks/
│   ├── 01_EDA.ipynb         # 탐색적 데이터 분석
│   ├── clustering.ipynb     # 고객 군집화 분석
│   └── hmm_model.ipynb      # 은닉 마르코프 모델 기반 행동 분석
├── src/
│   ├── bq_loader.sql        # BigQuery SQL 쿼리 파일
│   └── 01_EDA.ipynb         # 중복된 노트북 파일(필요시 정리 예정)


> `src/01_EDA.ipynb` 파일은 `notebooks/01_EDA.ipynb` 와 내용이 유사하여 참고용으로 포함되어 있습니다. 추후 정리할 예정입니다.


## 사용 기술

- Google BigQuery
- Python (Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn)
- Jupyter Notebook (ipynb)
- VS Code
- Git/GitHub

## 분석 흐름

1. **데이터 수집**: BigQuery에서 SQL 쿼리로 데이터 로드 (`src/bq_loader.sql` 참조)
2. **EDA**: `notebooks/01_EDA.ipynb`에서 데이터 탐색 및 시각화
3. **RFM 분석 및 군집화**: `notebooks/clustering.ipynb`에서 고객 세그먼트 도출
4. **행동 모델링**: `notebooks/hmm_model.ipynb`에서 은닉 마르코프 모델을 활용한 행동 패턴 분석

## 실행 및 사용방법
1. 필요한 라이브러리 설치:
   ```bash
   pip install -r requirements.txt
   ```
2. `config.yaml` 파일에서 BigQuery 프로젝트 및 데이터셋 정보를 설정합니다.  
3. `notebooks/` 폴더 내 Jupyter 노트북을 열어 분석을 수행합니다.  
4. `src/` 폴더의 SQL 쿼리 파일과 Python 코드로 데이터 로딩 및 처리를 진행할 수 있습니다.

