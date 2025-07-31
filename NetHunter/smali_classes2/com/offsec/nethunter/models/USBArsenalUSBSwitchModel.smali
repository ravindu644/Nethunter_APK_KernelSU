.class public Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;
.super Ljava/lang/Object;
.source "USBArsenalUSBSwitchModel.java"


# instance fields
.field private idProduct:Ljava/lang/String;

.field private idVendor:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private serialnumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idVendor:Ljava/lang/String;

    iput-object p2, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idProduct:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->manufacturer:Ljava/lang/String;

    iput-object p4, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->product:Ljava/lang/String;

    iput-object p5, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->serialnumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getidProduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getidVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getmanufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getproduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getserialnumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->serialnumber:Ljava/lang/String;

    return-object v0
.end method

.method public setidProduct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idProduct:Ljava/lang/String;

    return-void
.end method

.method public setidVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idVendor:Ljava/lang/String;

    return-void
.end method

.method public setmanufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setproduct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->product:Ljava/lang/String;

    return-void
.end method

.method public setserialnumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->serialnumber:Ljava/lang/String;

    return-void
.end method
