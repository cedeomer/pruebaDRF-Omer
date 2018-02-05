from django.contrib import admin

from . models import TbCity
from . models import TbCountry
from . models import TbStatus
from . models import TbStore
from . models import TbUser
from . models import TbUserStore

admin.site.register(TbCity)
admin.site.register(TbCountry)
admin.site.register(TbStatus)
admin.site.register(TbStore)
admin.site.register(TbUser)
admin.site.register(TbUserStore)

