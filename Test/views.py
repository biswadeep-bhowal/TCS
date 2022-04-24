from asyncio.windows_events import NULL
#from os import RWF_APPEND
from django.shortcuts import render, redirect
from Profiles.models import User, Student
from .models import *
from random import randint, choice
from django.contrib.auth import login, logout
from tcs_test.settings import QUESTION_COUNT as N


def Instructions( request ) : 

    if 'subject' in request.POST.keys() :   # RENDER INSTRUCTIONS PAGE 
        
        request.session[ 'subject' ] = request.POST[ 'subject' ]
        Initialise_Cache( request )
        C=Cache.objects.get(student=Student.objects.get(user=request.user))
        return render( request, 'testing.html', { 'subject' : request.session[ 'subject' ],'C':C } )

    request = Initialise_Test( request )
    return redirect( 'http://localhost:8000/test/' )    # RENDER THE TEST



def Initialise_Cache( request ) : 

    try : Cache( student = Student.objects.get( user = request.user ), subject = request.session[ 'subject' ]  ).save()
    except Exception as e : raise Exception( e )




def Initialise_Test( request ) : 
    
    request.session[ '1' ] = [ i for i in range( 1, N+1 ) ]
    request.session[ '2' ] = [ i for i in range( N+1, N*2 + 1 ) ]
    request.session[ '3' ] = [ i for i in range( N*2 + 1, N*3 + 1 ) ]
    

    c = Cache.objects.get( student = Student.objects.get( user = request.user ) )

    c.score = 0
    c.subject = request.session[ 'subject' ]
    c.qno = 1
    c.qid = choice( request.session[ '1' ] )
    
    question = get_question( c.subject, c.qid )
    
    c.question = question.question
    
    c.A = question.A
    c.B = question.B
    c.C = question.C
    c.D = question.D

    c.correct = question.correct
    c.difficulty = 1

    #request.session[ '1' ].remove( c.qid )

    c.save()

    return request



def get_question( subject, qid ) :

    Q = {
        'PYTHON' :  PYTHON.objects.get( id = qid ),
        'JAVA' :    JAVA.objects.get( id = qid ),
        'CN' :      CN.objects.get( id = qid ),
        'OS' :      OS.objects.get( id = qid ),
        'DBMS' :    DBMS.objects.get( id = qid )
    }

    return Q[ subject ]



def Test( request ) : 

    C = Cache.objects.get( student = Student.objects.get( user = request.user ) )

    if 'option' not in request.POST.keys() : 
        request=Initialise_Test(request)
        return render( request, 'question.html', { 'C' : C } )
    request.session[str(C.difficulty)].remove(C.qid) 
    if request.POST[ 'option' ] == C.correct : 

        C.score += C.difficulty

        if C.difficulty < 3 : C.difficulty += 1

    elif C.difficulty > 1 : C.difficulty -= 1

    response = "{}:{}".format( C.qid, request.POST[ 'option' ] )
    exec( "C.r_{} = response".format( C.qno ) )

    C.save()

    if C.qno == N : return redirect( 'http://localhost:8000/final' )

    C.qno += 1
    if C.qno==N+1: return render(request,'question.html')
    C.qid = choice( request.session[ str( C.difficulty ) ] )
    
    question = get_question( C.subject, C.qid )

    C.question = question.question
    
    C.A = question.A
    C.B = question.B
    C.C = question.C
    C.D = question.D
    
    C.correct = question.correct

    C.save()

    return render( request, 'question.html', { 'C' : C } )


def final(request):
    return render(request,'final.html')    










def Score( request ) : 

    S = Student.objects.get( user = request.user )
    C = Cache.objects.get( student = S )

    R = Result( student = S, score = C.score, subject = C.subject )
    R.save()

    #C.delete()
    Cache.objects.filter(student=S).delete()
    return render( request, 'score.html', { 'Score' : R.score } )





def Logout( request ) :

       
    logout( request )
    return render(request,'login.html',{})

def final_page(request):
    return redirect('http://localhost:8000/final')