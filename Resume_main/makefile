all: text

dvi:
# resume
#	latex -halt-on-error vineet_kumar_resume
	#bibtex vineet_kumar_resume
#	latex -halt-on-error vineet_kumar_resume
	latex -halt-on-error vineet_kumar_resume
	#bibtex vineet_kumar_resume
	latex -halt-on-error vineet_kumar_resume

ps: dvi
#	dvips -P cmz -t letter -o vineet_kumar_resume.ps vineet_kumar_resume.dvi
	dvips -P cmz -t letter -o vineet_kumar_resume.ps vineet_kumar_resume.dvi

pdf: ps
#	ps2pdf vineet_kumar_resume.ps
	ps2pdf vineet_kumar_resume.ps

text: pdf
	pdftotext -layout vineet_kumar_resume.pdf

clean:
	rm *.aux *.dvi *.out *.ps *.log 
