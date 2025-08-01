.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mClip:Landroid/content/ClipData;

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mLinkUri:Landroid/net/Uri;

.field mSource:I


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clip",
            "source"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    iput p2, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    iget v0, p1, Landroidx/core/view/ContentInfoCompat;->mSource:I

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    iget v0, p1, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mFlags:I

    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat;->mLinkUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mLinkUri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/core/view/ContentInfoCompat;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 1

    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Builder;)V

    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clip"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    iput p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mFlags:I

    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linkUri"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSource(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    iput p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    return-object p0
.end method
