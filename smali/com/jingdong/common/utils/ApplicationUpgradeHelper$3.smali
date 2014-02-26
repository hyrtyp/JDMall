.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$3;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->initDataAndDialog(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method
