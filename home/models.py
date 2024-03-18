from .old_models import *
# Create your models here.

class Driver (models.Model):
    id    = models.AutoField(primary_key=True,null=0,blank=0)
    jina  = models.CharField(max_length = 100,null=1,blank=1)
    Mkoa  = models.CharField(max_length = 100,null=1,blank=1)
    gender  = models.CharField(max_length = 100,null=1,blank=1)
    aina_ya_chombo  = models.CharField(max_length = 2,default="P" ,null=1,blank=1)
    mwezi_wakuzaliwa  = models.CharField(max_length = 100,null=1,blank=1)
    tarehe_ya_kuzaliwa  = models.CharField(max_length = 100,null=1,blank=1)
    mwaka_wakuzaliwa  = models.CharField(max_length = 100,null=1,blank=1)
    Namba_ya_simu  = models.CharField(max_length = 100,null=1,blank=1)
    mahausiaono  = models.CharField(max_length = 100,null=1,blank=1)
    mkoa_wakuzaliwa  = models.CharField(max_length = 100,null=1,blank=1)
    wilaya_yakuzaliwa  = models.CharField(max_length = 100,null=1,blank=1)
    kata_yakuzaliwa  = models.CharField(max_length = 100,null=1,blank=1)
    jina_yamtu_karibu  = models.CharField(max_length = 100,null=1,blank=1)
    namba_ya_simu_yamtu_karibu  = models.CharField(max_length = 100,null=1,blank=1)
    aina_ya_mahusiano_yamtu_karibu  = models.CharField(max_length = 100,null=1,blank=1)
    wilaya  = models.CharField(max_length = 100,null=1,blank=1)
    kata  = models.CharField(max_length = 100,null=1,blank=1)
    kituo  = models.CharField(max_length = 100,null=1,blank=1)
    tarafa  = models.CharField(max_length = 100 ,null=1,blank=1)
    tarehe  = models.DateTimeField(auto_now=1)
    date  = models.DateTimeField(auto_now_add=1)
    Namba_ya_leseni  = models.CharField(max_length = 100,null=1,blank=1)
    Namba_ya_chombo  = models.CharField(max_length = 100,null=1,blank=1)
    picha_ya_dereva = models.ImageField(null=1,blank=1)

    def __str__(self):
        return str(self.jina)
   
from uuid import uuid4


def get_uuid():
    return uuid4()
Charfield = models.CharField
class Chama(models.Model):
    name =Charfield(max_length = 12)
    mkoa =Charfield(max_length = 12)
    wilaya =Charfield(max_length = 12)
    # uid = models.UUIDField(blank=0,null=0,default=get_uuid(),unique=1)

    def __srr__(self):
        return f'{self.mkoa} - {self.wilaya}'
    


from django.dispatch import receiver
from django.db.models.signals import post_save
from tasks import send_verification_text

# method for updating
@receiver(post_save, sender=Driver, dispatch_uid="update_stock_count")
def send_message(sender, instance, **kwargs):
    recepient:str = Driver.objects.filter(id=instance.id).values("Namba_ya_simu")[0]["Namba_ya_simu"]
    if not "chama" in recepient: error = "Tarifazako Hazijakamilika"
    print("sendin SMS to: ",recepient)
    send_verification_text.send_message(recepient,message="Usajili wako ume kamilika")

# @receiver(post_save, sender=Driver)
# def send_message(sender, instance, **kwargs):
#     print("sendin SMS to: ",instance)

#     # inventory_item = Driver.objects.get(id=instance.inventory_item.id)
# # 
#     # if instance.quantity > inventory_item.quantity:
#         # raise Exception("There are not enough items in the inventory.")
# # 
    


# from time import sleep
# from home.models import Driver
# for driver in Driver.objects.all():
#         print(
#              driver.id,
#              driver.jina,
#              driver.Mkoa,
#              driver.gender,
#              driver.aina_ya_chombo,
#              driver.mwezi_wakuzaliwa,
#              driver.tarehe_ya_kuzaliwa,
#              driver.mwaka_wakuzaliwa,
#              driver.Namba_ya_simu,
#              driver.mahausiaono,
#              driver.mkoa_wakuzaliwa,
#              driver.wilaya_yakuzaliwa,
#              driver.kata_yakuzaliwa,
#              driver.jina_yamtu_karibu,
#              driver.namba_ya_simu_yamtu_karibu,
#              driver.aina_ya_mahusiano_yamtu_karibu,
#              driver.wilaya,
#              driver.kata,
#              driver.kituo,
#              driver.tarafa,
#              driver.tarehe,
#              driver.date,
#              )
