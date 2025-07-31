.class public Lcom/offsec/nethunter/models/CustomCommandsModel;
.super Ljava/lang/Object;
.source "CustomCommandsModel.java"


# instance fields
.field private Command:Ljava/lang/String;

.field private CommandLabel:Ljava/lang/String;

.field private ExecutionMode:Ljava/lang/String;

.field private RunOnBoot:Ljava/lang/String;

.field private RuntimeEnv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->CommandLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->Command:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->RuntimeEnv:Ljava/lang/String;

    iput-object p4, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->ExecutionMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->RunOnBoot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->Command:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->CommandLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->ExecutionMode:Ljava/lang/String;

    return-object v0
.end method

.method public getRunOnBoot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->RunOnBoot:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntimeEnv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->RuntimeEnv:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->Command:Ljava/lang/String;

    return-void
.end method

.method public setCommandLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->CommandLabel:Ljava/lang/String;

    return-void
.end method

.method public setExecutionMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->ExecutionMode:Ljava/lang/String;

    return-void
.end method

.method public setRunOnBoot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->RunOnBoot:Ljava/lang/String;

    return-void
.end method

.method public setRuntimeEnv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/CustomCommandsModel;->RuntimeEnv:Ljava/lang/String;

    return-void
.end method
