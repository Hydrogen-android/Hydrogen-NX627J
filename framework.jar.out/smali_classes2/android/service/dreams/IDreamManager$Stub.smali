.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final TRANSACTION_awaken:I = 0x2

.field static final TRANSACTION_dream:I = 0x1

.field static final TRANSACTION_finishSelf:I = 0x8

.field static final TRANSACTION_getDefaultDreamComponent:I = 0x5

.field static final TRANSACTION_getDreamComponents:I = 0x4

.field static final TRANSACTION_isDreaming:I = 0x7

.field static final TRANSACTION_setDisplayPowerModeFor627:I = 0xd

.field static final TRANSACTION_setDozeScreenBrightnessFor627:I = 0xe

.field static final TRANSACTION_setDreamComponents:I = 0x3

.field static final TRANSACTION_setTpSleep:I = 0xf

.field static final TRANSACTION_startDozing:I = 0x9

.field static final TRANSACTION_stopDozing:I = 0xa

.field static final TRANSACTION_testDream:I = 0x6

.field static final TRANSACTION_writeAodNode:I = 0xb

.field static final TRANSACTION_writeAodNodeFor627:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/service/dreams/IDreamManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "android.service.dreams.IDreamManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 191
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setTpSleep(I)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v2

    .line 180
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/service/dreams/IDreamManager$Stub;->setDozeScreenBrightnessFor627(II)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    return v2

    .line 169
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/service/dreams/IDreamManager$Stub;->setDisplayPowerModeFor627(II)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    return v2

    .line 158
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 162
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/service/dreams/IDreamManager$Stub;->writeAodNodeFor627(ZI)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v2

    .line 149
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 152
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->writeAodNode(Z)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v2

    .line 140
    .end local v1    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 143
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    return v2

    .line 127
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;II)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v2

    .line 116
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 120
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    nop

    .line 121
    .local v1, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v3, v1}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v2

    .line 108
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    move-result v1

    .line 110
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v2

    .line 94
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 100
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_3
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->testDream(Landroid/content/ComponentName;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v2

    .line 80
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 82
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_4

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v3, p3, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    :goto_1
    return v2

    .line 72
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v1

    .line 74
    .local v1, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 76
    return v2

    .line 63
    .end local v1    # "_result":[Landroid/content/ComponentName;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 66
    .local v1, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 56
    .end local v1    # "_arg0":[Landroid/content/ComponentName;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v2

    .line 49
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v2

    .line 44
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
