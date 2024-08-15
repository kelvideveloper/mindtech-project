from rest_framework import serializers
from  emails_register.models import Email
class SerializerforEmail(serializers.ModelSerializer):
    class Meta:
        model = Email
        fields = ['email']
    
    def validate_email(self, value):
        if Email.objects.filter(email = value).exists():
            raise serializers.ValidationError("Use um email que não possua um cadastro")
        return value