.class public final Lcom/google/android/gms/internal/location/zze;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ClientIdentityCreator"
.end annotation

.annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x2,
        0x5
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 W2\u00020\u0001:\u0001WBQ\u0008\u0017\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0003\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u000cBa\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0011J\u000e\u00106\u001a\u0002072\u0006\u0010\u001d\u001a\u00020\u001aJ)\u00108\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001a2\u0012\u00109\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050:\"\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010;J)\u0010<\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001a2\u0012\u00109\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050:\"\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010;J<\u0010=\u001a\u00020\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u000107H\u0007J)\u0010>\u001a\u00020?2\u0006\u0010\u001d\u001a\u00020\u001a2\u0012\u00109\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050:\"\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010@J\u0010\u0010A\u001a\u00020?2\u0006\u0010\u001d\u001a\u00020\u001aH\u0007J\u0010\u0010B\u001a\u00020?2\u0006\u0010\u001d\u001a\u00020\u001aH\u0007J)\u0010C\u001a\u00020?2\u0006\u0010\u001d\u001a\u00020\u001a2\u0012\u00109\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050:\"\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010@J\u0010\u0010D\u001a\u00020?2\u0006\u0010\u001d\u001a\u00020\u001aH\u0007J\u0013\u0010E\u001a\u00020\"2\u0008\u0010F\u001a\u0004\u0018\u00010GH\u0096\u0002J\u0008\u0010H\u001a\u00020\u0000H\u0007J\n\u0010I\u001a\u0004\u0018\u00010\u0000H\u0007J\u0008\u0010J\u001a\u00020\u0003H\u0016J&\u0010K\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001a2\u0008\u0010L\u001a\u0004\u0018\u00010\u00002\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010N\u001a\u00020\"2\u0006\u0010O\u001a\u00020\nH\u0007J\u0018\u0010N\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010P\u001a\u00020QH\u0007J\u0008\u0010R\u001a\u00020\u0005H\u0016J\u0018\u0010S\u001a\u00020?2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\u0003H\u0016R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R,\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00030\u00198G\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR,\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00100\u00198G\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001fR\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00008\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R-\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\"0\u00198\u00c7\u0002\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001fR\u0011\u0010#\u001a\u00020\"8G\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020\"8G\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010$R\u0011\u0010&\u001a\u00020\"8G\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010$R\u0011\u0010\'\u001a\u00020\"8G\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010$R\u0011\u0010(\u001a\u00020\"8G\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010$R-\u0010)\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\"0\u00198\u00c7\u0002\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0016R\u0016\u0010\u0004\u001a\u00020\u00058GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0016R\u0013\u0010\r\u001a\u00020\u00038G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010.\u001a\u00020\u00008G\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0016\u0010\u0002\u001a\u00020\u00038GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010-R\u0011\u00102\u001a\u0002038G\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u00a8\u0006X"
    }
    d2 = {
        "Lcom/google/android/gms/libs/identity/ClientIdentity;",
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "uid",
        "",
        "packageName",
        "",
        "attributionTag",
        "listenerId",
        "clientFeatures",
        "",
        "Lcom/google/android/gms/common/Feature;",
        "impersonator",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/libs/identity/ClientIdentity;)V",
        "pid",
        "clientSdkVersion",
        "clientType",
        "Lcom/google/android/gms/libs/identity/ClientType;",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/google/android/gms/libs/identity/ClientType;Lcom/google/android/gms/libs/identity/ClientIdentity;)V",
        "_clientSdkVersion",
        "Ljava/lang/Integer;",
        "_clientType",
        "getAttributionTag",
        "()Ljava/lang/String;",
        "getClientFeatures",
        "()Ljava/util/List;",
        "Lkotlin/Function1;",
        "Landroid/content/Context;",
        "Lkotlin/ParameterName;",
        "name",
        "context",
        "getClientSdkVersion",
        "()Lkotlin/jvm/functions/Function1;",
        "getClientType",
        "isFirstParty",
        "",
        "isImpersonatedIdentity",
        "()Z",
        "isMyProcess",
        "isMyUid",
        "isMyUser",
        "isSystemServer",
        "isZeroParty",
        "getListenerId",
        "getPackageName",
        "getPid",
        "()I",
        "realIdentity",
        "getRealIdentity",
        "()Lcom/google/android/gms/libs/identity/ClientIdentity;",
        "getUid",
        "userHandle",
        "Landroid/os/UserHandle;",
        "getUserHandle",
        "()Landroid/os/UserHandle;",
        "asImpersonator",
        "Lcom/google/android/gms/libs/identity/Impersonator;",
        "checkAnyPermissions",
        "permissions",
        "",
        "(Landroid/content/Context;[Ljava/lang/String;)Z",
        "checkPermissions",
        "copy",
        "enforceAnyPermissions",
        "",
        "(Landroid/content/Context;[Ljava/lang/String;)V",
        "enforceFirstParty",
        "enforcePackageName",
        "enforcePermissions",
        "enforceZeroParty",
        "equals",
        "other",
        "",
        "forAggregation",
        "getImpersonator",
        "hashCode",
        "impersonate",
        "impersonatee",
        "impersonateeListenerId",
        "supportsFeature",
        "feature",
        "version",
        "",
        "toString",
        "writeToParcel",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "java.com.google.android.gms.libs.identity_identity"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zze;",
            ">;"
        }
    .end annotation
.end field

.field public static final zza:Lcom/google/android/gms/internal/location/zzd;


# instance fields
.field private final zzb:I
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUid"
        id = 0x1
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPackageName"
        id = 0x3
    .end annotation
.end field

.field private final zzd:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAttributionTag"
        id = 0x4
    .end annotation
.end field

.field private final zze:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getListenerId"
        id = 0x6
    .end annotation
.end field

.field private final zzf:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getClientFeatures"
        id = 0x8
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/location/zze;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getImpersonator"
        id = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/location/zzd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/location/zzd;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/internal/location/zze;->zza:Lcom/google/android/gms/internal/location/zzd;

    new-instance v0, Lcom/google/android/gms/internal/location/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/location/zze;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/location/zze;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "only for Parcelable.Creator"
    .end annotation

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lcom/google/android/gms/internal/location/zze;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/location/zze;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zze;->zzd:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_3

    if-eqz p6, :cond_2

    iget-object p4, p6, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p4, p1

    :cond_3
    :goto_1
    iput-object p4, p0, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    if-nez p5, :cond_5

    if-eqz p6, :cond_4

    iget-object p1, p6, Lcom/google/android/gms/internal/location/zze;->zzf:Ljava/util/List;

    :cond_4
    move-object p5, p1

    if-nez p5, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/location/zzex;->zzi()Lcom/google/android/gms/internal/location/zzex;

    move-result-object p5

    const-string p1, "of(...)"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const-string p1, "<this>"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/location/zzex;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/location/zzex;

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zze;->zzf:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/location/zze;->zzg:Lcom/google/android/gms/internal/location/zze;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/location/zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/location/zze;->zzb:I

    check-cast p1, Lcom/google/android/gms/internal/location/zze;

    iget v2, p1, Lcom/google/android/gms/internal/location/zze;->zzb:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zze;->zzd:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzg:Lcom/google/android/gms/internal/location/zze;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zze;->zzg:Lcom/google/android/gms/internal/location/zze;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzf:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zze;->zzf:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/location/zze;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zze;->zzd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zze;->zzg:Lcom/google/android/gms/internal/location/zze;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zze;->zzd:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v0, p0, Lcom/google/android/gms/internal/location/zze;->zzb:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zze;->zzd:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/location/zze;->zzb:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zze;->zzd:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zze;->zze:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zze;->zzg:Lcom/google/android/gms/internal/location/zze;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzf:Ljava/util/List;

    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zze;->zzg:Lcom/google/android/gms/internal/location/zze;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
