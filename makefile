all: pdf

dvi:
# resume
	latex -halt-on-error vineet_kumar_resume
	#bibtex vineet_kumar_resume
	latex -halt-on-error vineet_kumar_resume
	latex -halt-on-error vineet_kumar_resume_1col
	#bibtex vineet_kumar_resume
	latex -halt-on-error vineet_kumar_resume_1col
	

ps: dvi
	dvips -P cmz -t letter -o vineet_kumar_resume.ps vineet_kumar_resume.dvi
	dvips -P cmz -t letter -o vineet_kumar_resume_1col.ps vineet_kumar_resume_1col.dvi

pdf: ps
	ps2pdf vineet_kumar_resume.ps
	ps2pdf vineet_kumar_resume_1col.ps


clean:
	rm *.aux *.dvi *.out *.ps *.log 

cover:
	latex -halt-on-error vineet_kumar_cover
	#bibtex vineet_kumar_resume
	latex -halt-on-error vineet_kumar_cover
	
	
	dvips -P cmz -t letter -o vineet_kumar_cover.ps vineet_kumar_cover.dvi
	ps2pdf vineet_kumar_cover.ps
