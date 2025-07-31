.class public Lcom/offsec/nethunter/utils/PermissionCheck;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# static fields
.field public static final DEFAULT_PERMISSIONS:[Ljava/lang/String;

.field public static final DEFAULT_PERMISSION_RQCODE:I = 0x1

.field public static final NH_TERM_PERMISSIONS:[Ljava/lang/String;

.field public static final NH_TERM_PERMISSIONS_RQCODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PermissionCheck"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/offsec/nethunter/utils/PermissionCheck;->NH_TERM_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/utils/PermissionCheck;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/offsec/nethunter/utils/PermissionCheck;->context:Landroid/content/Context;

    return-void
.end method

.method private varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public checkPermissions([Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/utils/PermissionCheck;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/utils/PermissionCheck;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/utils/PermissionCheck;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public isAllPermitted([Ljava/lang/String;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "PermissionCheck"

    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/offsec/nethunter/utils/PermissionCheck;->context:Landroid/content/Context;

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "Permissions are NOT all granted."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "All permissions are granted."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public requestPermissions()V
    .locals 2

    sget-object v0, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/PermissionCheck;->isAllPermitted([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/utils/PermissionCheck;->checkPermissions([Ljava/lang/String;I)V

    :cond_0
    sget-object v0, Lcom/offsec/nethunter/utils/PermissionCheck;->NH_TERM_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/PermissionCheck;->isAllPermitted([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/utils/PermissionCheck;->checkPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
