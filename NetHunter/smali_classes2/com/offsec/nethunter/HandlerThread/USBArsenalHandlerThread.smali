.class public Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;
.super Landroid/os/HandlerThread;
.source "USBArsenalHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;
    }
.end annotation


# static fields
.field public static final CHANGE_INQUIRY_STRING:I = 0x9

.field public static final GET_STORAGE_FUNC_FOLDER_NAME:I = 0x5

.field public static final GET_USBNETWORK_SQL_DATA:I = 0xb

.field public static final GET_USBSWITCH_SQL_DATA:I = 0xa

.field public static final IS_INIT_EXIST:I = 0x1

.field public static final MOUNT_IMAGE:I = 0x7

.field public static final RELOAD_MOUNTSTATUS:I = 0x6

.field public static final RELOAD_USBIFACE:I = 0x4

.field public static final RETRIEVE_USB_FUNCS:I = 0x2

.field public static final SETUSBIFACE:I = 0x3

.field public static final UNMOUNT_IMAGE:I = 0x8


# instance fields
.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;

.field private resultObject:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetexe(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Lcom/offsec/nethunter/utils/ShellExecuter;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->listener:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresultObject(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->resultObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputresultObject(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->resultObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "USBArsenalHandlerThread"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->resultObject:Ljava/lang/Object;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    new-instance v0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;

    invoke-virtual {p0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;-><init>(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setOnShellExecuterFinishedListener(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->listener:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;

    return-void
.end method
