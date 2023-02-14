FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update                                  \
    && apt-get install -y texlive-latex-base        \
                          texlive-fonts-recommended \
                          texlive-fonts-extra       \
                          texlive-latex-extra       \
                          texlive-luatex

CMD lualatex                                        \
    -interaction=nonstopmode                        \
    -halt-on-error                                  \
    -output-directory /cv                           \
    /cv/Arslan_Gumerov.tex

