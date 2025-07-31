.class public Lcom/offsec/nethunter/models/NethunterModel;
.super Ljava/lang/Object;
.source "NethunterModel.java"


# instance fields
.field private command:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private result:[Ljava/lang/String;

.field private runOnCreate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/offsec/nethunter/models/NethunterModel;->command:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/models/NethunterModel;->delimiter:Ljava/lang/String;

    iput-object p4, p0, Lcom/offsec/nethunter/models/NethunterModel;->runOnCreate:Ljava/lang/String;

    iput-object p5, p0, Lcom/offsec/nethunter/models/NethunterModel;->result:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->result:[Ljava/lang/String;

    return-object v0
.end method

.method public getRunOnCreate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->runOnCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->command:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setResult([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->result:[Ljava/lang/String;

    return-void
.end method

.method public setRunOnCreate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->runOnCreate:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->title:Ljava/lang/String;

    return-void
.end method
