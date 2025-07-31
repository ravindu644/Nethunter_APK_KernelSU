.class public Lcom/offsec/nethunter/models/KaliServicesModel;
.super Ljava/lang/Object;
.source "KaliServicesModel.java"


# instance fields
.field private CommandforCheckServiceStatus:Ljava/lang/String;

.field private CommandforStartService:Ljava/lang/String;

.field private CommandforStopService:Ljava/lang/String;

.field private RunOnChrootStart:Ljava/lang/String;

.field private ServiceName:Ljava/lang/String;

.field private Status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->ServiceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStartService:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStopService:Ljava/lang/String;

    iput-object p4, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforCheckServiceStatus:Ljava/lang/String;

    iput-object p5, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->RunOnChrootStart:Ljava/lang/String;

    iput-object p6, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->Status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommandforCheckServiceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforCheckServiceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandforStartService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStartService:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandforStopService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStopService:Ljava/lang/String;

    return-object v0
.end method

.method public getRunOnChrootStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->RunOnChrootStart:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->ServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public setCommandforCheckServiceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforCheckServiceStatus:Ljava/lang/String;

    return-void
.end method

.method public setCommandforStartService(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStartService:Ljava/lang/String;

    return-void
.end method

.method public setCommandforStopService(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStopService:Ljava/lang/String;

    return-void
.end method

.method public setRunOnChrootStart(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->RunOnChrootStart:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->ServiceName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->Status:Ljava/lang/String;

    return-void
.end method
