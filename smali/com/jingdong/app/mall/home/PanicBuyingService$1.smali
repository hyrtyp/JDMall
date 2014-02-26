.class Lcom/jingdong/app/mall/home/PanicBuyingService$1;
.super Landroid/os/Binder;
.source "PanicBuyingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/home/PanicBuyingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/PanicBuyingService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$1;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
