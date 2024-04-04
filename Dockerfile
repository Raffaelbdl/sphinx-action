FROM sphinxdoc/sphinx

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

RUN apt-get update -y && apt-get install -y git

ENTRYPOINT ["/entrypoint.py"]
