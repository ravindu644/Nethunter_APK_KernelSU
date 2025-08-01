.class public Lde/psdev/licensesdialog/model/Notice;
.super Ljava/lang/Object;
.source "Notice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lde/psdev/licensesdialog/model/Notice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCopyright:Ljava/lang/String;

.field private mLicense:Lde/psdev/licensesdialog/licenses/License;

.field private mName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lde/psdev/licensesdialog/model/Notice$1;

    invoke-direct {v0}, Lde/psdev/licensesdialog/model/Notice$1;-><init>()V

    sput-object v0, Lde/psdev/licensesdialog/model/Notice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/psdev/licensesdialog/model/Notice;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/psdev/licensesdialog/model/Notice;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/psdev/licensesdialog/model/Notice;->mCopyright:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/psdev/licensesdialog/licenses/License;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/psdev/licensesdialog/model/Notice;->mName:Ljava/lang/String;

    iput-object p2, p0, Lde/psdev/licensesdialog/model/Notice;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lde/psdev/licensesdialog/model/Notice;->mCopyright:Ljava/lang/String;

    iput-object p4, p0, Lde/psdev/licensesdialog/model/Notice;->mLicense:Lde/psdev/licensesdialog/licenses/License;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/psdev/licensesdialog/model/Notice;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Lde/psdev/licensesdialog/licenses/License;
    .locals 1

    iget-object v0, p0, Lde/psdev/licensesdialog/model/Notice;->mLicense:Lde/psdev/licensesdialog/licenses/License;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/psdev/licensesdialog/model/Notice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/psdev/licensesdialog/model/Notice;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/model/Notice;->mCopyright:Ljava/lang/String;

    return-void
.end method

.method public setLicense(Lde/psdev/licensesdialog/licenses/License;)V
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/model/Notice;->mLicense:Lde/psdev/licensesdialog/licenses/License;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/model/Notice;->mName:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lde/psdev/licensesdialog/model/Notice;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lde/psdev/licensesdialog/model/Notice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lde/psdev/licensesdialog/model/Notice;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lde/psdev/licensesdialog/model/Notice;->mCopyright:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
