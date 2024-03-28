# 나의 python 버전
FROM python:3.10.2

# /code 폴더 만들기
WORKDIR /code

# ./requirements.txt 를 /code/requirements.txt 로 복사
COPY ./requirements.txt /code/requirements.txt

# requirements.txt 를 보고 모듈 전체 설치(-r)
RUN pip install --no-cache-dir -r /code/requirements.txt

COPY . /code
# 실행
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]