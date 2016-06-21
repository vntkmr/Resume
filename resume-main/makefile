all: pdf

dvi:
	latex -halt-on-error vineet_kumar_resume
	latex -halt-on-error vineet_kumar_resume

ps: dvi
	dvips -P cmz -t letter -o vineet_kumar_resume.ps vineet_kumar_resume.dvi

pdf: ps
	ps2pdf vineet_kumar_resume.ps

clean:
	rm *.aux *.dvi *.out *.ps *.log 
