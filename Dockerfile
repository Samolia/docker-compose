FROM python:3

WORKDIR /stocks_products

COPY . .

RUN pip install -r ./requirements.txt
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/stocks_products/entrypoint.sh"]
