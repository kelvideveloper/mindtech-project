
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from emails_register.serializers import SerializerforEmail
@api_view(['POST'])
def email_register(request):

    new_email = SerializerforEmail(data=request.data)
    if new_email.is_valid():
        new_email.save()
        return Response(data=new_email.data, status= status.HTTP_201_CREATED)
    else:
        
        return Response(data=new_email.errors, status= status.HTTP_400_BAD_REQUEST)