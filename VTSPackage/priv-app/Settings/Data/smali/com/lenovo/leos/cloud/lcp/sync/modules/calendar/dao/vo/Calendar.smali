.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"


# instance fields
.field private _id:Ljava/lang/Long;

.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private calendarAccessLevel:Ljava/lang/Integer;

.field private calendarColor:Ljava/lang/Integer;

.field private calendarTimezone:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private maxReminder:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private ownerAccount:Ljava/lang/String;

.field private sid:Ljava/lang/Long;

.field private visible:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarAccessLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarAccessLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCalendarColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCalendarTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxReminder()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->maxReminder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->ownerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->sid:Ljava/lang/Long;

    return-object v0
.end method

.method public getVisible()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->visible:Ljava/lang/Integer;

    return-object v0
.end method

.method public get_id()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->accountName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->accountType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCalendarAccessLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "calendarAccessLevel"    # Ljava/lang/Integer;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarAccessLevel:Ljava/lang/Integer;

    .line 88
    return-void
.end method

.method public setCalendarColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "calendarColor"    # Ljava/lang/Integer;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarColor:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public setCalendarTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "calendarTimezone"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarTimezone:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->displayName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMaxReminder(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxReminder"    # Ljava/lang/Integer;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->maxReminder:Ljava/lang/Integer;

    .line 112
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setOwnerAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerAccount"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->ownerAccount:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSid(Ljava/lang/Long;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/Long;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->sid:Ljava/lang/Long;

    .line 40
    return-void
.end method

.method public setVisible(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "visible"    # Ljava/lang/Integer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->visible:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public set_id(Ljava/lang/Long;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->_id:Ljava/lang/Long;

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calendar [_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, ", accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calendarColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calendarAccessLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarAccessLevel:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownerAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->ownerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->visible:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxReminder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->maxReminder:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string v1, ", calendarTimezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->calendarTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->sid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
